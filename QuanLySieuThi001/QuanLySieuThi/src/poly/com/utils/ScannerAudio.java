/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.utils;

import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.sound.sampled.LineUnavailableException;
import javax.sound.sampled.UnsupportedAudioFileException;

/**
 *
 * @author nhatt
 */
public class ScannerAudio {
    public static void ScanQRSound(){
        try {
            AudioInputStream audioInputStream = AudioSystem.getAudioInputStream(new File("bloop.wav"));
            Clip clip = AudioSystem.getClip();
            clip.open(audioInputStream);
            clip.start();
            
        } catch (UnsupportedAudioFileException ex) {
            Logger.getLogger(ScannerAudio.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ScannerAudio.class.getName()).log(Level.SEVERE, null, ex);
        } catch (LineUnavailableException ex) {
            Logger.getLogger(ScannerAudio.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public static void ScanSound(){
        try {
            AudioInputStream audioInputStream = AudioSystem.getAudioInputStream(new File("scannerbeep.wav"));
            Clip clip = AudioSystem.getClip();
            clip.open(audioInputStream);
            clip.start();
            
        } catch (UnsupportedAudioFileException ex) {
            Logger.getLogger(ScannerAudio.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ScannerAudio.class.getName()).log(Level.SEVERE, null, ex);
        } catch (LineUnavailableException ex) {
            Logger.getLogger(ScannerAudio.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
